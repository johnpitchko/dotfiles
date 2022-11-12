-- :PackerSync        install/sync packages
-- :PackerClean       remove disabled or unused plugins
-- :PackerInstall     clean, then install new packages

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Extra Lua functions
  use 'nvim-lua/plenary.nvim'

  -- Treesitter (syntax highlighting and more)
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"

  use 'nvim-tree/nvim-web-devicons'

  -- Show numbers in tab bar
  use 'webdevel/tabulous'
end)
