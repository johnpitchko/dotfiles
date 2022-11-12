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

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Leader key is ,
-- First set it to no-op to clear any other bindings
map('', ',', '<Nop>', opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Show Lexplore
map('n', '<leader>t', ':Lex 30<cr>', opts)

-- CTRL-S to save in *all* modes
map('n', '<c-s>', ':update<cr>', term_opts)
map('v', '<c-s>', '<ESC>:update<cr>', term_opts)
map('i', '<c-s>', '<ESC>:update<cr>', term_opts)

-- Normal mode
-- Go to tab by number
map('n', '<leader>1', '1gt')
map('n', '<leader>2', '2gt')
map('n', '<leader>3', '3gt')
map('n', '<leader>4', '4gt')
map('n', '<leader>5', '5gt')
map('n', '<leader>6', '6gt')
map('n', '<leader>7', '7gt')
map('n', '<leader>8', '8gt')
map('n', '<leader>9', '9gt')
map('n', '<leader>0', ':tablast<CR>')

-- Better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
map('n', '<C-Up>', ':resize +2<CR>', opts)
map('n', '<C-Down>', ':resize -2<CR>', opts)
map('n', '<C-Left>', ':vertical resize +2<CR>', opts)
map('n', '<C-Right>', ':vertical resize -2<CR>', opts)

-- Navigate buffers
map('n', '<S-l>', ':bnext<CR>', opts)
map('n', '<S-h>', ':bprevious<CR>', opts)

-- Insert mode
-- Press jk fast to enter Normal mode
map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')

-- Visual
-- Stay in indent mode
map('v', '>', '>gv')
map('v', '<', '<gv')

-- Don't overwrite register when pasting over
map('v', 'p', '"_dP', opts)

-- Move text up and down
-- Doesn't work on Mac; need to map Alt/Option key or some damn thing
map('v', '<A-j>', ':m .+1<CR>==', opts)
map('v', '<A-k>', ':m .-2<CR>==', opts)

-- Visual Block
-- Move text up and down
map('x', 'J', ":move '>+1<CR>gv-gv", opts)
map('x', 'K', ":move '<-2<CR>gv-gv", opts)

