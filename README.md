# John Pitchko's Dotfiles

Managed via [Dotbot](https://github.com/anishathalye/dotbot) with the [dotbot-brew](https://github.com/d12frosted/dotbot-brew) plugin.

# Directory Structure

Dotbot configuration is stored in the root folder. All files to be symlinked are in the `files/` directory. This was done to make things a little tidier by separating the Dotbot-required files from the application files that will be symlinked.

# Installation

1. Clone this repo into `~/.dotfiles`.
2. Run the install script, which should first install Dotbot then create the specified folders, symlinks, etc...
```
$ ./install
```

# Requirements

- Binaries required/recommended to install via Homebrew:

  1. fd
  2. wget
