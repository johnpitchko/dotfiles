eval "$(/opt/homebrew/bin/brew shellenv)"

# This is needed to initialize ASDF inside of NeoVim, to be able to install Solargraph
# I stole this from Nate so 'maybe' it works/doesn't work?
. '/opt/homebrew/opt/asdf/libexec/asdf.sh'
