local helper = {}

helper.enable = false

helper.formats = {}

helper.setup = function ()
	local augroup = vim.api.nvim_create_augroup("Formatting", {})

if helper.enable then
	vim.api.nvim_create_autocmd("BufWritePre", {
		group = augroup,
		pattern = helper.formats,
		callback = function()
			vim.lsp.buf.format({ async = false })
		end
	})
end
end

return helper
