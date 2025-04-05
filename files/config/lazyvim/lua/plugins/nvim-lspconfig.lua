-- Available LSPs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
-- Default options for all LSPs: https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/configs
-- Follow the instructions in the file above to install the LSP, _then_ enable the LSP within Neovim below.
--
-- Troubleshooting
-- LSP not attaching to buffer: could be an issue if `root_dir` is not set

return {
  "neovim/nvim-lspconfig",
  enabled = true,
  opts = {
    servers = {
      -- ruby_lsp will be auto-installed by asdf as a default gem; do not have Mason install it.
      ruby_lsp = {
        mason = false,
        enabled = true,
        filetypes = { "ruby" },
      },
      -- ruby_lsp has built-in formatter, so rubocop is not needed.
      -- Let's ensure Mason does not accidentally install it.
      rubocop = {
        mason = false,
        enabled = false,
      },
    },
  }, -- opts = {},
  -- config = function()
  --   local lspconfig = require("lspconfig")
  --
  --   lspconfig.ruby_lsp.setup({
  --     init_options = {
  --       formatter = "rubocop",
  --       linters = { "rubocop" },
  --     },
  --     -- Disable for eruby filetype due to noise and incorrect linting
  --     filetypes = { "ruby" },
  --   })
  --
  --   lspconfig.bashls.setup({})
  --   lspconfig.html.setup({})
  --   lspconfig.lua_ls.setup({})
  --   lspconfig.quick_lint_js.setup({})
  --   lspconfig.terraformls.setup({})
  -- end,
  -- keys = {
  --   { "<leader>l",  group = "lsp",         desc = "LSPs & formatters" },
  --   { "<leader>ln", "<cmd>NullLsInfo<cr>", desc = 'NullLs Info' },
  --   { "<leader>ll", "<cmd>LspInfo<cr>",    desc = 'LSP info' },
  --   { "<leader>lo", "<cmd>LspLog<cr>",     desc = 'LSP log' },
  -- }
}
