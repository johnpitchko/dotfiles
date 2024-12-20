return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = { style = "moon" },
  init = function()
    vim.cmd [[colorscheme tokyonight-moon]]
  end
}
