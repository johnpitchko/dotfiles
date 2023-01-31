## For Heroku
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='lvim'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###############################################################################
## Shell config & aliases
###############################################################################

export NVIMHOME="$HOME/.config/nvim"

# Alias to quickly edit zsh config
alias zshconfig="lvim ~/.zshrc"
alias zshsource="source ~/.zshrc"

alias ll="ls -lah"

alias myip='curl http://ipecho.net/plain; echo' 														# Print your current public IP address
alias grep='grep --color=auto'                  													# Make grep pretty
alias fs='foreman start -f Procfile'																				# Start Wingman
alias exa='exa --long --header --git'																				# Show exa output in long format with headers and Git info
alias vim='lvim'																														# Replace vim with nvim
alias jekyll-up='bundle exec jekyll serve --drafts'

# Neovim aliases
alias nviminit='nvim ~/.config/nvim/init.vim'														# Shortcut to open neovim config
alias nvimmappings='nvim ~/.config/nvim/mappings.vim'
alias nvimsettings='nvim ~/.config/nvim/settings.vim'

# Make commands verbose
alias cp="cp -v"
alias mv="mv -v"

# Ruby/Rails
alias rspec='bundle exec rspec'
alias rc='stty sane && rails c'

# Git
alias glog='git log --graph --decorate --pretty=oneline --abbrev-commit'	# Show a cool graph of git commit history
alias gst='git status'
alias gsw='git switch'
alias gco='git commit'
alias gad='git add'

# Chord
alias cd-chord='cd ~/Code/chord-oms'
alias chord-oms-staging="heroku run 'rails c' --app chord-oms-staging"
alias chord-oms-prod="heroku run 'rails c' --app chord-oms-prod"
alias bbc-oms-staging="heroku run 'rails c' --app bbc-oms-staging"
alias bbc-oms-prod="heroku run 'rails c' --app bbc-oms-prod"

###############################################################################
## Homebrew
###############################################################################

export PATH="/usr/local/sbin:$PATH"

###############################################################################
## rbenv
###############################################################################

# Link Rubies to Homebrew's OpenSSL 1.1 (directed from rbenv install)
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="$HOME/.rbenv/bin:$PATH"

# Load rbenv automatically by appending the following to ~/.zshrc:
eval "$(rbenv init -)"

###############################################################################
## python@3.x
###############################################################################

# There are multiple versions of Python 3 installed, so put the most recent one first on the PATH.
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

# Use the binaries in 3.10
export PATH="/opt/homebrew/opt/python@3.10/libexec/bin:$PATH"

###############################################################################
## openssl@1.1
###############################################################################
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

###############################################################################
## postgresql
###############################################################################

export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/postgresql@13/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@13/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@13/lib/pkgconfig"

###############################################################################
## nvm
###############################################################################
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

###############################################################################
## Node
###############################################################################
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/node@16/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@16/include"

###############################################################################
## Stripe CLI
###############################################################################

fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i

#--------------------------------------------------------------------#
#                               Redis                                #
#--------------------------------------------------------------------#
export PATH="/opt/homebrew/opt/redis@6.2/bin:$PATH"

## Bison
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/bison/lib"

#--------------------------------------------------------------------#
#                              LunarVim                              #
#--------------------------------------------------------------------#
export PATH=/Users/johnpitchko/.local/bin:$PATH

eval "$(starship init zsh)"
