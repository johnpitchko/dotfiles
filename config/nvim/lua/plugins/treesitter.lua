return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    ensure_installed = {
      "bash",
      "diff",
      "hcl",
      "html",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "regex",
      "ruby",
      "toml",
      "terraform",
      "vim",
      "vimdoc",
      "yaml",
    },
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      -- If you are experiencing weird indenting issues, add the language to
      -- the list of additional_vim_regex_highlighting and disabled languages for indent.
      -- additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = {
      enable = true,
      -- disable = { 'ruby' }
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
