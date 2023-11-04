-- https://github.com/RRethy/nvim-treesitter-endwise
return {
  { "RRethy/nvim-treesitter-endwise" },
  {
    require("nvim-treesitter.configs").setup({
      endwise = {
        enable = true,
      },
    }),
  },
}
