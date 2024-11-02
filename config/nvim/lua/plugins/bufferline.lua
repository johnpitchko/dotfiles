-- https://github.com/akinsho/bufferline.nvim
return {
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function(_, opts)
	      require("bufferline").setup(opts)

	      --      Below config is from LazyVim; not exactly sure what is fixes so disabling for now...
		--      -- Fix bufferline when restoring a session
		--      vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
		-- callback = function()
		--   vim.schedule(function()
		--     pcall(nvim_bufferline)
		--   end)
		-- end,
		--      })
	   end,
}
