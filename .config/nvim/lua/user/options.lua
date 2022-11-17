-- :help options

local o = vim.opt

o.autoindent = true
o.backup = false -- Creates a backup file
o.clipboard = "unnamedplus" -- Copy/paste between nvim and everything else
o.cmdheight = 2
o.colorcolumn = "80" -- Highlight column 80 to show if the line is running too long
o.conceallevel = 0 -- Show `` in Markdown files
o.cursorline = true -- Highlight the line with the cursor
o.expandtab = true -- Convert tabs to spaces
o.guifont = "Meslo" -- Font for gvim only
o.encoding = "UTF-8"
o.fileencoding = "utf-8" -- Encode saved/written files in UTF-8
o.hidden = true -- Required for operations modifying multiple buffers like rename
o.hlsearch = true -- Highlight all matches when performing a search
o.ignorecase = true -- Make searches case-insensitive
-- o.mouse = c -- Disable mouse (a = all modes, c = off)
o.number = true -- Show line numbers
o.numberwidth = 4 -- Set number column width (default 4)
o.pumheight = 10 -- Pop-up menu hight
o.relativenumber = false -- Show line numbers relative to cursor line
o.scrolloff = 8 -- ???
o.showmode = true -- Show mode that vim is currently in (e.g. INSERT, VISUAL)
-- o.showtabline = 2               -- Always show tabs
o.shiftwidth = 2
o.sidescrolloff = 8 -- ??
o.signcolumn = "yes" -- Add extra left-hand column
o.smartcase = true
o.smartindent = true
o.softtabstop = 2 -- Use 2 spaces for tabs
o.spell = true -- Spell checking
o.splitbelow = true -- Horizontal splits open below
o.splitright = true -- Vertical splits open right
o.swapfile = false -- Creates a swapfile
o.tabstop = 2 -- Use 2 spaces for tabs
o.termguicolors = true
o.timeoutlen = 500 -- Time to wait for a mapped sequence to complete (in milliseconds)
o.undofile = true -- Enable persistent undo
o.updatetime = 300 -- Faster completion (4000ms default)
o.wrap = false -- Display lines as one long line (i.e. no line wrap)
o.writebackup = false -- ???

-- vim.cmd    Runs vimscript in Lua
-- Surround in [[...]] for multiline
-- vim.cmd([[ ]])
