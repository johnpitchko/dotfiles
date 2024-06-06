return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Enables Rubocop magically just by including this line!
        rubocop = {
          -- Do NOT install this server via Mason!
          mason = false,
        },
      },
    },
  },
}
