# NEOVIM!

Customized from 💤 [LazyVim](https://github.com/LazyVim/LazyVim) for Ruby/Rails development.

## General notes about Lazyvim configuration
1. Create a configuration Lua file in `lua/plugins`, ideally named after the name of the plugin.
2. Each file must have a top level `return { ... }` block followed by the name of the plugin to be configured. For example:
```
# lua/plugins/nvim-lspconfig.lua

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {},
    },
  },
}
```


## Creating LSP harmony with version managers and Lazyvim

Lazyvim includes a plugin called Mason for installing tools like LSPs, formatters, linters, etc... Tools installed via Mason will be placed within the Mason package directory (`~/.local/share/nvim/mason/packages`).

Conflict arises when using version managers, such as `asdf`, or when installing these tools using a package manager for whatever project you are working on (e.g. `Gemfile` for Ruby/Rails projects). The result is multiple versions of the same tool being installed on your system. I think this creates problems with pathing and configuration (i.e. which version of `rubocop` will be used for linting/formatting in Neovim and how do I configure it?). 

1. _Do not_ install tools with Mason if those tools will be used by version-managed software.
2. Install those tools as packages in each version. asdf is great for this because it can install default gems whenever a new version of a language is installed.

## Instructions 

1. Perform default install/clone.
2. Install `ruby_lsp` via Mason (`:Mason`). Verify it was installed correctly by opening a `.rb` file and running `:LspInfo` to verify that `ruby_lsp` is running and attached to the buffer. If it says '0 clients attached to buffer' then something is not right.

Further test that core actions like formatting-on-save work by mucking up some of the file formatting (such as by indenting some lines various excessive amounts), saving the buffer, and confirming the file was reformatted properly.

## Customizations

1. Replaced minisurround with vim-surround.
2. Disabled minipairs (annoying).
3. Added vim-test.
