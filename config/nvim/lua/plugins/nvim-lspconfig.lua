-- Available LSPs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
-- Follow the instructions in the file above to install the LSP, _then_ enable the LSP within Neovim below.

return {
  "neovim/nvim-lspconfig",
  enabled = true,
  opts = {},
  config = function()
    local lspconfig = require('lspconfig')

    lspconfig.ruby_lsp.setup({
      init_options = {
        formatter = 'rubocop',
        linters = { 'rubocop' },
      },
    })

    lspconfig.eslint.setup({
      cmd = { "vscode-eslint-language-server", "--stdio" },
    })
    lspconfig.html.setup({})
    lspconfig.lua_ls.setup({})
    lspconfig.quick_lint_js.setup({})
  end
}
