return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
  },
  keys = {
    { "<leader>f", group = "telescope", desc = "Telescope" },
    {
      "<leader>ff",
      function()
        require('telescope.builtin').find_files()
      end,
      desc = 'Telescope find files'
    },
    {
      "<leader>fg",
      function()
        require('telescope.builtin').live_grep()
      end,
      desc = 'Telescope live grep'
    },
    {
      "<leader>fb",
      function()
        require('telescope.builtin').buffers()
      end,
      desc = 'Telescope buffers'
    }
    -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  },
}
