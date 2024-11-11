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
  end
}
