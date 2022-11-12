local o = vim.opt

o.autoindent = true
o.clipboard = 'unnamedplus'	    -- Copy/paste between nvim and everything else
o.cmdheight = 2
o.colorcolumn = '80'              -- Highlight column 80 to show if the line is running too long
o.conceallevel = 0	            -- Show `` in Markdown files
o.cursorline = true
o.expandtab = true							-- Convert tabs to spaces
o.hidden = true                 -- Required for operations modifying multiple buffers like rename
o.ignorecase = true             -- Make searches case-insensitive
o.mouse = c											-- Disable mouse
o.number = true
o.shiftwidth = 2
o.signcolumn = 'yes'             -- Add extra left-hand column
o.smartcase = true
o.smartindent = true
o.spell = true                  -- Spell checking
o.splitbelow = true             -- Horizontal splits open below
o.splitright = true             -- Vertical splits open right
o.tabstop = 2										-- Use 2 spaces for tabs
o.softtabstop = 2								-- Use 2 spaces for tabs
o.termguicolors = true
o.timeoutlen = 500							-- Decrease timeout for command keys
o.updatetime = 300

