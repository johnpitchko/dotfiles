-- Reloads Neovim configuration. Specifically, `~/.config/nvim/init.lua`, which in turn `require`s all the other configuration file.
--
-- Run `:lua ReloadConfig()`
function _G.ReloadConfig()
  for name,_ in pairs(package.loaded) do
    if name:match('^user') and not name:match('nvim-tree') then
      package.loaded[name] = nil
    end
  end

  -- `dofile` opens a file and executes its context as Lua; basically run the code in a Lua file.
  -- `vim.env.MYVIMRC` evaluates to `/Users/johnpitchko/.dotfiles/config/nvim/init.lua`.
  dofile(vim.env.MYVIMRC)
  dofile("/Users/johnpitchko/.config/nvim/lua/config/options.lua")
  -- dofile("/Users/johnpitchko/.dotfiles/config/nvim/lua/config/options.lua")
  vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end
