-- Tiny plugin to enhance Neovim's native comments
-- Installed mostly because I can't get Terrform comment shortcuts working
return {
  "folke/ts-comments.nvim",
  opts = {},
  event = "VeryLazy",
  enabled = vim.fn.has("nvim-0.10.0") == 1,
}
