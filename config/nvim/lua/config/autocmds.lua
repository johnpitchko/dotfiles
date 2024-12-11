-- Format on save
-- Source: https://www.mitchellhanberg.com/modern-format-on-save-in-neovim/
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp", { clear = true }),
  callback = function(args)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        vim.lsp.buf.format { async = false, id = args.data.client_id }
      end,
    })
  end
})

-- Unfold all code after reading a file into a buffer. Necessary because
-- TreeSitter will automatically fold all code when opening a buffer.
-- Source: https://www.jmaguire.tech/posts/treesitter_folding/
-- vim.api.nvim_create_autocmd("BufReadPost", {
--   callback = function()
--     vim.cmd("normal zR")
--   end
-- })

-- Unfold all code after reading a file into a buffer. Necessary because
-- TreeSitter will automatically fold all code when opening a buffer.
-- Source: https://www.jmaguire.tech/posts/treesitter_folding/
-- vim.api.nvim_create_autocmd("FileReadPost", {
--   callback = function()
--     vim.cmd("normal zR")
--   end
-- })
