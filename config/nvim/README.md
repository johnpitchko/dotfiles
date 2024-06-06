# NEOVIM!

 Customized from 💤 [LazyVim](https://github.com/LazyVim/LazyVim) for Ruby/Rails development.

## Instructions 

1. Perform default install/clone.
2. Install `ruby_lsp` via Mason (`:Mason`). Verify it was installed correctly by opening a `.rb` file and running `:LspInfo` to verify that `ruby_lsp` is running and attached to the buffer. If it says '0 clients attached to buffer' then something is not right.

Further test that core actions like formatting-on-save work by mucking up some of the file formatting (such as by indenting some lines various excessive amounts), saving the buffer, and confirming the file was reformatted properly.

## Customizations

1. Replaced minisurround with vim-surround.
2. Disabled minipairs (annoying).
3. Added vim-test.
