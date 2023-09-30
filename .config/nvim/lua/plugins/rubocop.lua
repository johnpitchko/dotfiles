return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rubocop = {
          on_new_config = function(new_config, new_root_dir)
            new_config.cmd = { "rubocop", "--lsp" }
          end,
        },
      },
    },
  },
}
