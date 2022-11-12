local opts = { noremap = true, silent = true }

vim.g.mapleader = ","

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- CTRL-S to save in *all* modes
map('n', '<c-s>', ':update<cr>', { silent = true })
map('v', '<c-s>', '<ESC>:update<cr>', { silent = true})
map('i', '<c-s>', '<ESC>:update<cr>', { silent = true})

map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')

-- Go to tab by number
map('', '<leader>1', '1gt')
map('', '<leader>2', '2gt')
map('', '<leader>3', '3gt')
map('', '<leader>4', '4gt')
map('', '<leader>5', '5gt')
map('', '<leader>6', '6gt')
map('', '<leader>7', '7gt')
map('', '<leader>8', '8gt')
map('', '<leader>9', '9gt')
map('', '<leader>0', ':tablast<CR>')

map('', '>', '>gv')
map('', '<', '<gv')
