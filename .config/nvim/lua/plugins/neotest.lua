return {
  {
    "nvim-neotest/neotest",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "zidhuss/neotest-minitest",
      "olimorris/neotest-rspec",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-minitest"),
          require("neotest-rspec"),
        },
      })
    end,
    keys = {
      {
        "<leader>Tt",
        function()
          require("neotest").run.run()
        end,
        desc = "Test nearest",
      },
      {
        "<leader>TT",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Test current file",
      },
    },
  },
}
