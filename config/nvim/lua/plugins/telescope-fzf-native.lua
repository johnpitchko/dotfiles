-- Enable fuzzy searches in Telescope
-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
--
-- Note: this used to be added as a dependency in the telescope lua file, but I moved it here for cleanliness.
-- If I kept this defined in the depedency table, then the additional configuration below must also be added in the
-- dependency table, making the overall telescope lua file a mess.
return {
  'nvim-telescope/telescope-fzf-native.nvim',
  build = 'make',
  config = function()
    local telescope = require('telescope')
    telescope.setup {
      extensions = {
        fzf = {}
      }
    }

    telescope.load_extension('fzf')
  end
}
