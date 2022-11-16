-- :PackerSync        install/sync packages
-- :PackerClean       remove disabled or unused plugins
-- :PackerInstall     clean, then install new packages
--
-- Plugins exist in ~/.local/share/nvim/site/pack/packer

local fn = vim.fn

-- Automatically install packer if not already installed
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("Packer not found or could not load.")
	return
end

-- Have packer use a popup window rather than a split window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- Packer can manage/update itself

	use("numToStr/Comment.nvim") -- Easily comment stuff
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Plenary (extra Lua functions)
	use("nvim-tree/nvim-tree.lua") -- A File Explorer For Neovim Written In Lua
	use("tpope/vim-surround")
	use("vim-test/vim-test")
	use("webdevel/tabulous") -- Show numbers in tab bar

	-- Comment frames
	use({
		"s1n7ax/nvim-comment-frame",
		requires = {
			{ "nvim-treesitter" },
		},
		config = function()
			require("nvim-comment-frame").setup()
		end,
	})

	-- Treesitter (syntax highlighting and more)
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("p00f/nvim-ts-rainbow") -- Rainbow parentheses
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Context-aware comments

	-- Completions
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-path")

	-- Snippets
	use("L3MON4D3/LuaSnip") -- Snippet engine
	use("rafamadriz/friendly-snippets") -- A bunch of snippets to use

	-- LSP
	use("folke/trouble.nvim")
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
	use("neovim/nvim-lspconfig") -- Enable LSP
	use("RRethy/vim-illuminate")
	use("williamboman/mason.nvim") -- Simple-to-use LSP installer
	use("williamboman/mason-lspconfig.nvim")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})

	-- Colorschemes
	use("altercation/vim-colors-solarized")
	use({ "dracula/vim", as = "dracula" })
	use("folke/tokyonight.nvim")
	use("gosukiwi/vim-atom-dark")
	use("jacoborus/tender.vim")
	use("lunarvim/darkplus.nvim")
	use("morhetz/gruvbox")
	use("rakr/vim-one")
	use("sainnhe/gruvbox-material")
	use("sjl/badwolf")
	use("sonph/onehalf")
	use("tomasr/molokai")

	-- Fonts
	use("ryanoasis/vim-devicons")
	use("nvim-tree/nvim-web-devicons")

	-- Rails
	use("tpope/vim-rails")
	use("vim-ruby/vim-ruby")
	use("tpope/vim-endwise")

	-- Git
	use("airblade/vim-gitgutter")
	use("tpope/vim-fugitive")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
