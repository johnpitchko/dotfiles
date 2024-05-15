[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###############################################################################
## Shell config & aliases
###############################################################################

# Enter directory by typing its name.
# Also go up a directory with ..
setopt autocd

# Alias to quickly edit zsh config
alias zshconfig="nvim ~/.zshrc"
alias zshsource="source ~/.zshrc"

alias exa='exa --long --header --git'																				# Show exa output in long format with headers and Git info
alias fs='foreman start -f Procfile'																				# Start Rails w/ Foreman
alias grep='grep --color=auto'                  													  # Make grep pretty
alias lg='lazygit'
alias ll="lsd"
alias lsd="lsd -lah"
alias myip='curl http://ipecho.net/plain; echo' 														# Print your current public IP address
alias nvimconfig='nvim ~/.config/nvim'
alias kittyconfig='nvim ~/.config/kitty'
# Fix backspaces not working when ssh'ing to a server
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
alias vi='nvim'
alias vim='nvim'

# Make commands verbose
alias cp="cp -v"
alias mv="mv -v"

# Ruby/Rails
alias rspec='bundle exec rspec'
alias rc='stty sane && bundle exec rails c'

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
alias chord-heroku-staging="heroku run '/bin/bash' --app chord-oms-staging"
alias chord-heroku-prod="heroku run '/bin/bash' --app chord-oms-prod"
alias bbc-oms-staging="heroku run 'rails c' --app bbc-oms-staging"
alias bbc-oms-prod="heroku run 'rails c' --app bbc-oms-prod"

# Gammafly
alias cd-gammafly='cd ~/Code/gammafly'
alias gammafly-prod='ssh srv-cg4u6andvk4n2c19f8h0@ssh.oregon.render.com'

export VISUAL=nvim

#--------------------------------------------------------------------#
#                              vim/Neovim/Lazyvim                    #
#--------------------------------------------------------------------#
export PATH=/Users/johnpitchko/.local/bin:$PATH
export NVIMHOME="$HOME/.config/nvim"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

###############################################################################
## Homebrew
###############################################################################

export PATH="/usr/local/sbin:$PATH"
# Necessary because Homebrew installs packages to different directories on Intel and ARM computers!
export BREW_PATH=$(brew --prefix)

###############################################################################
## Ruby
###############################################################################

# Link Rubies to Homebrew's OpenSSL 1.1 instead of 3.x (directed from rbenv install)
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

###############################################################################
## python@3.x
###############################################################################

# There are multiple versions of Python 3 installed, so put the most recent one first on the PATH.
export PATH="$BREW_PATH/opt/python@3.10/bin:$PATH"

# Use the binaries in 3.10
export PATH="$BREW_PATH/opt/python@3.10/libexec/bin:$PATH"

###############################################################################
## openssl@1.1
###############################################################################
export PATH="$BREW_PATH/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L$BREW_PATH/opt/openssl@1.1/lib"
export CPPFLAGS="-I$BREW_PATH/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="$BREW_PATH/opt/openssl@1.1/lib/pkgconfig"

###############################################################################
## postgresql
###############################################################################

export PATH="$BREW_PATH/opt/postgresql@15/bin:$PATH"
export LDFLAGS="-L$BREW_PATH/opt/postgresql@15/lib"
export CPPFLAGS="-I$BREW_PATH/opt/postgresql@15/include"
export PKG_CONFIG_PATH="$BREW_PATH/opt/postgresql@15/lib/pkgconfig"

# Chord OMS uses Postgresql v13, so maintain the paths here.
export PATH="$BREW_PATH/opt/postgresql@13/bin:$PATH"
export LDFLAGS="-L$BREW_PATH/opt/postgresql@13/lib"
export CPPFLAGS="-I$BREW_PATH/opt/postgresql@13/include"
export PKG_CONFIG_PATH="$BREW_PATH/opt/postgresql@13/lib/pkgconfig"

###############################################################################
## mysql
###############################################################################
export PATH="$BREW_PATH/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L$BREW_PATH/opt/mysql@8.0/lib"
export CPPFLAGS="-I$BREW_PATH/opt/mysql@8.0/include"
export PKG_CONFIG_PATH="$BREW_PATH/opt/mysql@8.0/lib/pkgconfig"

###############################################################################
## Node
###############################################################################
export PATH="$BREW_PATH/opt/node@16/bin:$PATH"

export LDFLAGS="-L$BREW_PATH/opt/node@16/lib"
export CPPFLAGS="-I$BREW_PATH/opt/node@16/include"

# For nodenv
eval "$(nodenv init -)"

###############################################################################
## Stripe CLI
###############################################################################
fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i

###############################################################################
## Rust
###############################################################################
export PATH="/Users/johnpitchko/.cargo/bin:$PATH"

#--------------------------------------------------------------------#
#                               Redis                                #
#--------------------------------------------------------------------#
export PATH="$BREW_PATH/opt/redis@6.2/bin:$PATH"

## Bison
export PATH="$BREW_PATH/opt/bison/bin:$PATH"
export LDFLAGS="-L$BREW_PATH/opt/bison/lib"

#  ╭──────────────────────────────────────────────────────────────────────────────╮
#  │                                  For Heroku                                  │
#  ╰──────────────────────────────────────────────────────────────────────────────╯

FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

## Starship
# Must be last line in .zshrc!
eval "$(starship init zsh)"
