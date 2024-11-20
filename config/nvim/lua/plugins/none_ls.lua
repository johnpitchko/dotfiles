-- Note that the _original_ plugin is called `null-ls`, but the author stopped active maintenance.
-- So it was forked by a new active maintainer and is now called `none-ls`. However,
-- all internal references, namespaces, variable names, etc.. still use `null-ls`.
--
-- Built-in sources: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
-- Use `:NullLsInfo` to show which formatters are attached to the buffer
return {
  "nvimtools/none-ls.nvim",
  enabled = false,
  init = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.htmlbeautifier.with({
          -- Allow max one blank line in ERB files
          extra_args = { "-b", "1" }
        }),
        null_ls.builtins.formatting.terraform_fmt,
        -- null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
      },
    })
  end
}
