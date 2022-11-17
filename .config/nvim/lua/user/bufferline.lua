local status_ok, bufferline = pcall(require, "bufferline")

if not status_ok then
	vim.notify("bufferline not found or could not be loaded")
	return
end

bufferline.setup({
	options = {
		numbers = "ordinal",
	},
})
