-- Configure Neovim-specific options
-- Neovim options quick reference: https://neovim.io/doc/user/quickref.html#option-list

vim.g.mapleader = " "					-- Set leader key to space

local opt = vim.opt

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
opt.colorcolumn = "80" 					-- Display coloured columns as a guide for when lines are running too long
opt.confirm = true 					-- Confirm to save changes before exiting modified buffer
opt.cursorline = true 					-- Enable highlighting of the current line
opt.expandtab = true 					-- Use spaces instead of tabs
opt.number = true					-- Show line numbers
opt.relativenumber = false
opt.shiftround = true 					-- Round indent
opt.shiftwidth = 2 					-- Size of an indent
opt.showmode = false 					-- Dont show mode since we have a statusline
opt.signcolumn = "yes" 					-- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true 					-- Don't ignore case with capitals
opt.smartindent = true 					-- Insert indents automatically
opt.smoothscroll = true
opt.spelllang = { "en" }
opt.splitbelow = true 					-- Put new windows below current
opt.tabstop = 2 					-- Number of spaces tabs count for
opt.termguicolors = true 				-- True color support
opt.undofile = true
opt.undolevels = 10000
opt.virtualedit = "block" 				-- Allow cursor to move where there is no text in visual block mode
opt.wrap = false 					-- Disable line wrap
