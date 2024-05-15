return {
  {
    "vim-test/vim-test",
    name = "vim-test",
    keys = {
      {
        "<leader>T",
        desc = "vim-test",
      },
      {
        "<leader>Tt",
        "<cmd>TestNearest<cr>",
        desc = "Test nearest",
      },
      {
        "<leader>TT",
        "<cmd>TestFile<cr>",
        desc = "Test current file",
      },
    },
  }
}
