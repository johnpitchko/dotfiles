-- fzf-lua: fuzzy finder w/ grep and more
-- https://github.com/ibhagwan/fzf-lua
return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end,
  keys = {
    { "<leader>f",  group = "fzf",                               desc = "fzf" },
    { "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>",   desc = "Find files" },
    { "<leader>fg", "<cmd>lua require('fzf-lua').buffers()<CR>", desc = "Find buffers" },
    { "<leader>fl", "<cmd>lua require('fzf-lua').resume()<CR>",  desc = "Resume last command" },
  }
}
