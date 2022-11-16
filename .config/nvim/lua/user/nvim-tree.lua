local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	vim.notify("Could not load nvim-tree or it could not be found")
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({})
