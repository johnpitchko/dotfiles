local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
  vim.notify("Could not load Trouble or it could not be found")
  return
end

trouble.setup {
}
