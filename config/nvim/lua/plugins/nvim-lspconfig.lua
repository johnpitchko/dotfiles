-- Available LSPs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

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

    lspconfig.html.setup({})
  end
}
