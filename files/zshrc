[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Prevent Starship command timeout messages
starship config command_timeout 1000

###############################################################################
## Shell config & aliases
###############################################################################

# Enter directory by typing its name.
# Also go up a directory with ..
setopt autocd

# Alias to quickly edit zsh config
alias zshconf="lvim ~/.zshrc"
alias zshsource="source ~/.zshrc"

alias exa='exa --long --header --git'																				# Show exa output in long format with headers and Git info
alias fs='foreman start -f Procfile'																				# Start Rails w/ Foreman
alias grep='grep --color=auto'                  													  # Make grep pretty
alias lg='lazygit'
alias ll="lsd"
alias lsd="lsd -lah"
alias myip='curl http://ipecho.net/plain; echo' 														# Print your current public IP address
alias nvimconf='nvim ~/.config/nvim/init.lua'
alias kittyconf='nvim ~/.config/kitty'

# Fix backspaces not working when ssh'ing to a server
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Make commands verbose
alias cp="cp -v"
alias mv="mv -v"

# AWS
# Set 'default' AWS profile; refer to ~/.aws/config for list of profiles
export AWS_PROFILE="dev-poweruser"

# Ruby/Rails
alias rspec='bundle exec rspec'
alias rc='stty sane && bundle exec rails c'
alias sidekiq='bundle exec sidekiq'

# Git
alias glog='git log --graph --decorate --pretty=oneline --abbrev-commit'	# Show a cool graph of git commit history
alias gst='git status'
alias gsw='git switch'
alias gco='git commit'
alias gad='git add'

# Chord
alias cd-chord='cd ~/Code/chord-oms'
alias chord-oms-staging="heroku run 'rails c -- --noautocomplete' --app chord-oms-staging"
# alias chord-oms-prod="heroku run 'rails c -- --noautocomplete' --app chord-oms-prod"
alias chord-oms-prod="heroku run 'rails c' --app chord-oms-prod"
alias chord-heroku-staging="heroku run '/bin/bash' --app chord-oms-staging"
alias chord-heroku-prod="heroku run '/bin/bash' --app chord-oms-prod"
alias bbc-oms-staging="heroku run 'rails c -- --noautocomplete' --app bbc-oms-staging"
alias bbc-oms-prod="heroku run 'rails c -- --noautocomplete' --app bbc-oms-prod"
alias bbc-oms-prod-sandbox="heroku run 'rails c -- --sandbox --noautocomplete' --app bbc-oms-prod"
alias hub-backend-staging="heroku run 'rails c -- --noautocomplete' --app hub-backend-staging"

## Chord CDP
alias cdp-dev="cd ~/Code/cdp/environments/development && export AWS_PROFILE=dev-administrator && aws sso login"
alias cdp-staging="cd ~/Code/cdp/environments/staging && export AWS_PROFILE=staging-administrator && aws sso login"
alias cdp-prod="cd ~/Code/cdp/environments/production && export AWS_PROFILE=prod-administrator && aws sso login"

# tmux
alias tmux-chord='tmux new-session -A -s chord'
alias tmux-wm='tmux new-session -A -s wingman'

export PATH=/Users/johnpitchko/.local/bin:$PATH

#--------------------------------------------------------------------#
#                              vim/Neovim/Lazyvim                    #
#--------------------------------------------------------------------#
alias vi='lvim'
alias vim='lvim'
alias lazyvim='NVIM_APPNAME=lazyvim nvim'
alias lvim='NVIM_APPNAME=lazyvim nvim'
alias astrovim='NVIM_APPNAME=astrovim nvim'

export VISUAL=lazyvim
# export NVIMHOME="$HOME/.config/nvim"

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

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi


# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# As of asdf 0.16.1; the below is no longer needed (https://stackoverflow.com/a/79416715/1368484)
# . $(brew --prefix asdf)/libexec/asdf.sh
# $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash


###############################################################################
## Ruby
###############################################################################

# Link Rubies to Homebrew's OpenSSL 1.1 instead of 3.x (directed from rbenv install)
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Disable Spring
export DISABLE_SPRING=1

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

# direnv
eval "$(direnv hook zsh)"

## Starship
# Must be last line in .zshrc!
eval "$(starship init zsh)"
