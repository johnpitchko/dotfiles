lua <<EOF

require("neotest").setup({
  log_level = 5,
  adapters = {
    require('neotest-rspec')({
      rspec_cmd = function()
        return vim.tbl_flatten({
          "bundle",
          "exec",
          "rspec",
        })
      end
    }),
  }
})

-- Mappings (experimental)
local vim = vim
local api = vim.api

local M = {}
-- map helper
function M.map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	api.nvim_set_keymap(mode, lhs, rhs, options)
end

local virtual_lines_enabled = true
local function toggleVirtualLines()
	virtual_lines_enabled = not virtual_lines_enabled
	vim.diagnostic.config({
		virtual_lines = virtual_lines_enabled,
		virtual_text = not virtual_lines_enabled,
	})
end

-- mapping example
---- save and exit
---- M.map("", "<C-s>", "<esc>:w<CR>")

M.map("", "<leader>t", '<cmd>lua require("neotest").run.run()<CR>')
M.map("", "<leader>T", '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>')

EOF
