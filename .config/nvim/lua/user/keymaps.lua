local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Functional wrapper for mapping custom keybindings
-- Modes
--  normal_mode = 'n'
--  insert_mode = 'i'
--  visual_mode = 'v'
--  visual_block_mode = 'x'
--  term_mode = 't'
--  command_mode = 'c'

-- Convenience function for creating keymaps
function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Leader key is <space>
-- First set it to no-op to clear any other bindings
map("", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- CTRL-S to save in *all* modes
map("n", "<c-s>", ":update<cr>", term_opts)
map("v", "<c-s>", "<ESC>:update<cr>", term_opts)
map("i", "<c-s>", "<ESC>:update<cr>", term_opts)

----------------------------------------------------------------------
--                           Normal mode                            --
----------------------------------------------------------------------
-- Go to tab by number
map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>4", "4gt")
map("n", "<leader>5", "5gt")
map("n", "<leader>6", "6gt")
map("n", "<leader>7", "7gt")
map("n", "<leader>8", "8gt")
map("n", "<leader>9", "9gt")
map("n", "<leader>0", ":tablast<CR>")

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize +2<CR>", opts)
map("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)
-- map("n", "<leader>1", ":1b<CR>", opts)
-- map("n", "<leader>2", ":2b<CR>", opts)
-- map("n", "<leader>3", ":3b<CR>", opts)
-- map("n", "<leader>4", ":4b<CR>", opts)
-- map("n", "<leader>5", ":5b<CR>", opts)
-- map("n", "<leader>6", ":6b<CR>", opts)
-- map("n", "<leader>7", ":7b<CR>", opts)
-- map("n", "<leader>8", ":8b<CR>", opts)
-- map("n", "<leader>9", ":9b<CR>", opts)
-- map("n", "<leader>0", ":10b<CR>", opts)

-- Searching with fzf
map("n", "<leader>f", "<cmd>FzfLua files<cr>", opts)
-- Enable below if you don't want the previewer
-- map('n', '<leader>f', "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
map("n", "<leader>g", "<cmd>FzfLua grep_project<cr>", opts)

-- Testing with vim-test
map("n", "<leader>t", "<cmd>TestNearest<cr>", opts)
map("n", "<leader>T", "<cmd>TestFile<cr>", opts)
map("n", "<leader>a", "<cmd>TestSuite<cr>", opts)
map("n", "<leader>l", "<cmd>TestLast<cr>", opts)
-- map("n", "<leader>g", "<cmd>TestVisit<cr>", opts)

-- File explore with vim-tree
-- vim-tree keys at https://github.com/nvim-tree/nvim-tree.lua/blob/9d241e5f5889cf8d37c3a8054b3e55157549c283/doc/nvim-tree-lua.txt#L1272
map("n", "<C-Bslash>", ":NvimTreeToggle<cr>", opts)
-- map("n", "<C-t>", ":NvimTreeToggle<cr>", opts)

-- Comment Frames
map("n", "<leader>cc", ":lua require('nvim-comment-frame').add_comment()<CR>", opts)
map("n", "<leader>C", ":lua require('nvim-comment-frame').add_multiline_comment()<CR>", opts)

----------------------------------------------------------------------
--                              Insert mode                         --
----------------------------------------------------------------------
-- Press jk fast to enter Normal mode
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

----------------------------------------------------------------------
--                           Visual mode                            --
----------------------------------------------------------------------
-- Stay in indent mode
map("v", ">", ">gv")
map("v", "<", "<gv")

-- Don't overwrite register when pasting over
map("v", "p", '"_dP', opts)

-- Move text up and down
-- Doesn't work on Mac; need to map Alt/Option key or some damn thing
-- map('v', '<A-j>', ':m .+1<CR>==', opts)
-- map('v', '<A-k>', ':m .-2<CR>==', opts)

----------------------------------------------------------------------
--                        Visual Block mode                         --
----------------------------------------------------------------------
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
