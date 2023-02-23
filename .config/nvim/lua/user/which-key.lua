local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	vim.notify("Could not load which-key or it could not be found")
end

vim.o.timeout = true
vim.o.timeoutlen = 300

-- Change default configuration here
which_key.setup({ "foo" })

-- Mappings go here
which_key.register({
	["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", "Toggle nvim-tree" },
	["<C-h>"] = { "<C-w>h" },
	["<C-j>"] = { "<C-w>j" },
	["<C-k>"] = { "<C-w>k" },
	["<C-l>"] = { "<C-w>l" },

	["<leader>t"] = {
		name = "+vim-test",
		t = { "<cmd>TestNearest<cr>", "Test Nearest" },
		T = { "<cmd>TestFile<cr>", "Test File" },
	},

	["<C-s>"] = { "<cmd>update<cr>", "Save/update" },
})
