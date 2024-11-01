return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = {
	    {
	      "<leader>fe",
	      function()
		-- Not sure the difference between this function and the one below, so I overwrote it so they are the same.
		-- I _think_ #root function maps to somewhere within LazyVim's `lua/lazyvim/util/root.lua` file.
		-- require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
		require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
	      end,
	      desc = "Explorer NeoTree (Root Dir)",
	    },
	    {
	      "<leader>fE",
	      function()
		require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
	      end,
	      desc = "Explorer NeoTree (cwd)",
	    },
	    { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
	    { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
    }
}
